/* -*- c++ -*- */
/*
 * Copyright 2002,2004,2012 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

/*
 * WARNING: This file is automatically generated by cmake. 
 * Any changes made to this file will be overwritten.
 */

#ifndef @GUARD_NAME@
#define	@GUARD_NAME@

#include <filter/api.h>
#include <gr_sync_decimator.h>
#include <gr_rotator.h>

namespace gr {
  namespace filter {


    /*!
     * \brief FIR filter combined with frequency translation with
     * @I_TYPE@ input, @O_TYPE@ output and @TAP_TYPE@ taps
     *
     * \ingroup filter_blk
     *
     * This class efficiently combines a frequency translation
     * (typically "down conversion") with a FIR filter (typically
     * low-pass) and decimation.  It is ideally suited for a "channel
     * selection filter" and can be efficiently used to select and
     * decimate a narrow band signal out of wide bandwidth input.
     *
     * Uses a single input array to produce a single output array.
     * Additional inputs and/or outputs are ignored.
     */
    class FILTER_API @BASE_NAME@ : virtual public gr_sync_decimator
    {
    public:
      // gr::filter::@BASE_NAME@::sptr
      typedef boost::shared_ptr<@BASE_NAME@> sptr;

      /*!
       * \brief FIR filter with @I_TYPE@ input, @O_TYPE@ output, and
       * @TAP_TYPE@ taps that also frequency translates a signal from
       * \p center_freq.
       *
       * Construct a FIR filter with the given taps and a composite
       * frequency translation that shifts center_freq down to zero
       * Hz. The frequency translation logically comes before the
       * filtering operation.
       *
       * \param decimation set the integer decimation rate
       * \param taps a vector/list of taps of type @TAP_TYPE@
       * \param center_freq Center frequency of signal to down convert from (Hz)
       * \param sampling_freq Sampling rate of signal (in Hz)
       */
      static sptr make(int decimation,
				  const std::vector<@TAP_TYPE@> &taps,
				  double center_freq,
				  double sampling_freq);

      virtual void set_center_freq(double center_freq) = 0;
      virtual double center_freq() const = 0;

      virtual void set_taps(const std::vector<@TAP_TYPE@> &taps) = 0;
      virtual std::vector<@TAP_TYPE@> taps() const = 0;
    };

  } /* namespace filter */
} /* namespace gr */

#endif /* @GUARD_NAME@ */
