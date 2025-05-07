#!/usr/bin/env python3
"""model to  lists all documents in a mongodb collection"""


def list_all(mongo_collection):
    """return lists for all documents in a mongodb collection"""
    return list(mongo_collection.find())
