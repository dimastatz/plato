import pytest
import plato.plato_facade as pf


def test_upload_workbook():
    body = b''
    assert pf.upload_workbook(body) == 0


def test_send_message():
    assert pf.send_message('') == ''