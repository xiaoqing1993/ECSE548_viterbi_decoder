#!/usr/bin/env python
"""
plot.py: A BER/FER plotting script based on matplotlib.

Usage: ./plot.py [options] <resultfile1> [<resultfile2> [<resultfile3> [...]]]
"""

__author__ = "Pascal Giard"
__copyright__ = "Copyright (C) 2013 Pascal Giard  <pasca.giard@mail.mcgill.ca>"
__license__ = "GPL v2"
__version__ = "1.0"

import math
import matplotlib
from matplotlib.font_manager import FontProperties
# Gtk is nicer than Tk (default toolkit), not to mention that the Tk backend is
# unable to handle window resizing properly!!
matplotlib.use('GtkAgg')

import numpy as np
import matplotlib.pyplot as plt
import sys
import re
import getopt

fontP = FontProperties()
fontP.set_size('small')

optlist, csvfiles = getopt.getopt(sys.argv[1:],
                                  'hqbfr:d:t:o:',
                                  ["help", "ber", "fer", "quiet", "resolution=", "dpi=", "title=", "output="])

# Some preferences and settings
colors = ["k", "r", "b", "g", "#e78729", "m", "c"]
markers = ["*", "v", "h", "^", "s", "x", "d", "o", "+"]
markersize = 8
linewidth = 2
title = "Performance"
# Default resolution and DPI
resX = 900
resY = 700
DPI = 100.0
# Save to file?
savetofile = False
# Only save to file?
quiet = False
# Draw BER?
plot_ber = False
# Draw FER?
plot_fer = False
# Plot type specified?
plot_type = False

def usage():
    print "Usage: %s [options] <resultfile1> [<resultfile2> [<resultfile3> [...]]]" % (sys.argv[0])
    print ""
    print "A BER/FER plotting script based on matplotlib."
    print "    -q, --quiet              Only save figure to file and exit (%s)" % (quiet)
    print "    -b, --ber                Plot BER [1]"
    print "    -f, --fer                Plot FER [1]"
    print "    -r, --resolution <X,Y>   Figure resolution (%d,%d)" % (resX, resY)
    print "    -d, --dpi <dpi>          Dots per inch (%.0f)" % (DPI)
    print "    -o, --output <filename>  Save figure to file (don't save)"
    print "                             Note: See supported formats below."
    print "    -t, --title <title>      Figure and window title (\"%s\")" % (title)
    print ""
    print "    -h, --help               Show this message"
    print ""
    print "[1] If none of these options is specified, both are drawn."
    print ""
    print "Supported image formats:"
    for f,d in sorted(plt.figure().canvas.get_supported_filetypes().iteritems()):
        print "  %s:\t%s" % (f,d)

for o, a in optlist:
    if o in ("-h", "--help"):
        usage()
        sys.exit()
    elif o in ("-r", "--resolution"):
        (resX, resY) = re.split(r"\D", a)
        resX = int(resX)
        resY = int(resY)
    elif o in ("-d", "--dpi"):
        DPI = float(a)
    elif o in ("-o", "--output"):
        savetofile = True
        outputfile = a
    elif o in ("-t", "--title"):
        title = a
    elif o in ("-q", "--quiet"):
        quiet = True
    elif o in ("-b", "--ber"):
        plot_ber = True
        plot_type = True
    elif o in ("-f", "--fer"):
        plot_fer = True
        plot_type = True
    else:
        sys.stderr.write('ERROR: Unknown option: %s\n\n' % (o))
        usage()
        sys.exit(1)

# By default, both should be drawn
if not plot_type:
    plot_ber = True
    plot_fer = True

if( len(csvfiles) < 1 ):
    sys.stderr.write('ERROR: You need to specify at least one results file!\n\n')
    usage()
    sys.exit(1)

if quiet and not savetofile:
    sys.stderr.write('ERROR: You must specify an output file in quiet mode!\n\n')
    usage()
    sys.exit(1)

results = []
legends = []

# Import results using numpy
for file in csvfiles:
    with open(file, 'r') as f:
        line = f.readline()
        line = f.readline() if( re.search(r"^#\s?label", line) ) else line

        # Result file from TRex
        if( re.search(r"^#(snr_db|ebn0_db|Component|Running)", line) ):
            lines = (line for line in f if not(re.search(r"^(snr_db|ebn0_db)", line)))
            results.append(
                np.genfromtxt(lines,
                              unpack=True, skiprows=0, delimiter=' ',
                              usecols=(0,3,1), comments='#')
                )
        else:
            results.append(
                np.loadtxt(file,
                           unpack=True, skiprows=0, delimiter=' ',
                           usecols=(0,2,1), comments='#')
                )

        f.close()

# Create the legend from the information available at the top of the file
for file in csvfiles:
    f = open(file,'r')
    for i, line in enumerate(f):
        a = re.match(r"^#\s?label\s(.+)$", line)
        if a:
            legends.append(a.group(1))
            break
        else:
            filename = file
            a = re.match(r".+/([^/]+)$", filename)
            if a:
                filename = a.group(1)
            legends.append(r"Imported from %s" % (filename))
            break

# Draw the BER curves
if plot_ber:
    for i,r in enumerate(results):
        plt.semilogy(r[0], r[2],
                     markers[i%len(markers)]+'-',
                     color=colors[i%len(colors)],
                     markersize=markersize, linewidth=linewidth)

# Draw the FER curves
# Note: Plotting seperately for the legends to match
if plot_fer:
    for i,r in enumerate(results):
        # FER
        plt.semilogy(r[0], r[1],
                     markers[i%len(markers)]+('-.' if plot_ber else '-') ,
                     color=colors[i%len(colors)],
                     markersize=markersize, linewidth=linewidth)

plt.title(title, fontsize=18)
plt.xlabel("$E_B/N_0$ (dB)", fontsize=14)
if plot_ber and plot_fer:
    plt.ylabel("BER/FER", fontsize=14)
elif plot_ber:
    plt.ylabel("BER", fontsize=14)
else:
    plt.ylabel("FER", fontsize=14)
plt.grid(b=True, which='major', linestyle=':')
plt.grid(b=True, which='minor', linestyle=':')

# Doing the legend manually to avoid annoying duplicates
plt.legend(legends, loc='best', prop = fontP)

# Resize figure to desired resolution
F = plt.gcf()
F.set_dpi(DPI)
F.set_size_inches( (resX/DPI, resY/DPI) )
plt.tight_layout()

# Get FigureManager to resize window and set title
FM = plt.get_current_fig_manager()
FM.resize(resX, resY)
# Remove LaTeX anchors as the title bar won't honor it anyway
win_title=re.sub(r"\$", r"", title)
FM.set_window_title(win_title)

# Save the figure to a file if requested
if savetofile:
    F.savefig(outputfile)

if not quiet:
    plt.show()
