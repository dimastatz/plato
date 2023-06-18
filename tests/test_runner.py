import pytest
from plato.plato_facade import upload_workbook


def test_always_passes():
    assert True


def test_upload_workbook():
    body = b''
    assert upload_workbook(body) == 0

