#!/usr/bin/env python3

import argparse
import sys


def main(argv):
    parser = argparse.ArgumentParser(
            description='Generate simple math questions'
            )
    parser.add_argument(
            'ops', nargs='+', type=str,
            help='what kind of operations (multiple choices)',
            choices=['add', 'sub', 'mul', 'div']
            )
    parser.add_argument(
            'answer_upper_limit', type=int,
            help='The highest value of the answer',
            )
    parser.add_argument(
            'answer_lower_limit', type=int,
            help='The lowest value of the answer',
            )
    parser.add_argument(
            "-v", "--verbosity", type=int,
            help="increase output verbosity",
            choices=[0, 1, 2]
            )

    foo = parser.parse_args()
    print(foo)


if __name__ == '__main__':
        main(sys.argv)
