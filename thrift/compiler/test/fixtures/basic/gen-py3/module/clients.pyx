#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector as vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref
from cpython.ref cimport PyObject
from thrift.lib.py3.thrift_client cimport EventBase, make_py3_client, py3_get_exception
from thrift.lib.py3.thrift_client import get_event_base
from thrift.lib.py3.folly cimport cFollyEventBase, cFollyTry, cFollyUnit, c_unit

import asyncio
import sys
import traceback

cimport module.types
from module.clients_wrapper cimport move

from module.clients_wrapper cimport cMyServiceAsyncClient, cMyServiceClientWrapper
from module.clients_wrapper cimport cMyServiceFastAsyncClient, cMyServiceFastClientWrapper
from module.clients_wrapper cimport cMyServiceEmptyAsyncClient, cMyServiceEmptyClientWrapper
from module.clients_wrapper cimport cMyServicePrioParentAsyncClient, cMyServicePrioParentClientWrapper
from module.clients_wrapper cimport cMyServicePrioChildAsyncClient, cMyServicePrioChildClientWrapper


cdef void made_MyService_py3_client_callback(
        PyObject* future,
        cFollyTry[unique_ptr[cMyServiceClientWrapper]] result) with gil:
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        pyclient = MyServiceClient(pyfuture.loop)
        pyclient._client = move(result.value())
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, pyclient)

cdef void MyService_ping_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void MyService_getRandomData_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode())

cdef void MyService_hasDataById_callback(
        PyObject* future,
        cFollyTry[cbool] result) with gil:
    cdef object pyfuture = <object> future
    cdef cbool citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void MyService_getDataById_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode())

cdef void MyService_putDataById_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void MyService_lobDataById_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void made_MyServiceFast_py3_client_callback(
        PyObject* future,
        cFollyTry[unique_ptr[cMyServiceFastClientWrapper]] result) with gil:
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        pyclient = MyServiceFastClient(pyfuture.loop)
        pyclient._client = move(result.value())
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, pyclient)

cdef void MyServiceFast_ping_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void MyServiceFast_getRandomData_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode())

cdef void MyServiceFast_hasDataById_callback(
        PyObject* future,
        cFollyTry[cbool] result) with gil:
    cdef object pyfuture = <object> future
    cdef cbool citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void MyServiceFast_getDataById_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode())

cdef void MyServiceFast_putDataById_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void MyServiceFast_lobDataById_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void made_MyServiceEmpty_py3_client_callback(
        PyObject* future,
        cFollyTry[unique_ptr[cMyServiceEmptyClientWrapper]] result) with gil:
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        pyclient = MyServiceEmptyClient(pyfuture.loop)
        pyclient._client = move(result.value())
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, pyclient)

cdef void made_MyServicePrioParent_py3_client_callback(
        PyObject* future,
        cFollyTry[unique_ptr[cMyServicePrioParentClientWrapper]] result) with gil:
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        pyclient = MyServicePrioParentClient(pyfuture.loop)
        pyclient._client = move(result.value())
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, pyclient)

cdef void MyServicePrioParent_ping_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void MyServicePrioParent_pong_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void made_MyServicePrioChild_py3_client_callback(
        PyObject* future,
        cFollyTry[unique_ptr[cMyServicePrioChildClientWrapper]] result) with gil:
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        pyclient = MyServicePrioChildClient(pyfuture.loop)
        pyclient._client = move(result.value())
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, pyclient)

cdef void MyServicePrioChild_pang_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)


cdef class MyServiceClient:
    cdef unique_ptr[cMyServiceClientWrapper] _client
    cdef object loop

    def __cinit__(self, loop):
        self.loop = loop

    @staticmethod
    async def make_client(bytes host, int port, loop=None):
        if loop is None:
           loop = asyncio.get_event_loop()
        future = loop.create_future()
        future.loop = loop
        eb = await get_event_base(loop)
        make_py3_client[cMyServiceAsyncClient, cMyServiceClientWrapper](
            (<EventBase> eb)._folly_event_base,
            host,
            port,
            0,
            made_MyService_py3_client_callback,
            future)
        return await future

    def ping(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).ping(
            MyService_ping_callback,
            future)
        return future

    def getRandomData(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).getRandomData(
            MyService_getRandomData_callback,
            future)
        return future

    def hasDataById(
            self,
            arg_id):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).hasDataById(
            arg_id,
            MyService_hasDataById_callback,
            future)
        return future

    def getDataById(
            self,
            arg_id):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).getDataById(
            arg_id,
            MyService_getDataById_callback,
            future)
        return future

    def putDataById(
            self,
            arg_id,
            arg_data):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).putDataById(
            arg_id,
            arg_data.encode('UTF-8'),
            MyService_putDataById_callback,
            future)
        return future

    def lobDataById(
            self,
            arg_id,
            arg_data):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).lobDataById(
            arg_id,
            arg_data.encode('UTF-8'),
            MyService_lobDataById_callback,
            future)
        return future

cdef class MyServiceFastClient:
    cdef unique_ptr[cMyServiceFastClientWrapper] _client
    cdef object loop

    def __cinit__(self, loop):
        self.loop = loop

    @staticmethod
    async def make_client(bytes host, int port, loop=None):
        if loop is None:
           loop = asyncio.get_event_loop()
        future = loop.create_future()
        future.loop = loop
        eb = await get_event_base(loop)
        make_py3_client[cMyServiceFastAsyncClient, cMyServiceFastClientWrapper](
            (<EventBase> eb)._folly_event_base,
            host,
            port,
            0,
            made_MyServiceFast_py3_client_callback,
            future)
        return await future

    def ping(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).ping(
            MyServiceFast_ping_callback,
            future)
        return future

    def getRandomData(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).getRandomData(
            MyServiceFast_getRandomData_callback,
            future)
        return future

    def hasDataById(
            self,
            arg_id):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).hasDataById(
            arg_id,
            MyServiceFast_hasDataById_callback,
            future)
        return future

    def getDataById(
            self,
            arg_id):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).getDataById(
            arg_id,
            MyServiceFast_getDataById_callback,
            future)
        return future

    def putDataById(
            self,
            arg_id,
            arg_data):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).putDataById(
            arg_id,
            arg_data.encode('UTF-8'),
            MyServiceFast_putDataById_callback,
            future)
        return future

    def lobDataById(
            self,
            arg_id,
            arg_data):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).lobDataById(
            arg_id,
            arg_data.encode('UTF-8'),
            MyServiceFast_lobDataById_callback,
            future)
        return future

cdef class MyServiceEmptyClient:
    cdef unique_ptr[cMyServiceEmptyClientWrapper] _client
    cdef object loop

    def __cinit__(self, loop):
        self.loop = loop

    @staticmethod
    async def make_client(bytes host, int port, loop=None):
        if loop is None:
           loop = asyncio.get_event_loop()
        future = loop.create_future()
        future.loop = loop
        eb = await get_event_base(loop)
        make_py3_client[cMyServiceEmptyAsyncClient, cMyServiceEmptyClientWrapper](
            (<EventBase> eb)._folly_event_base,
            host,
            port,
            0,
            made_MyServiceEmpty_py3_client_callback,
            future)
        return await future

cdef class MyServicePrioParentClient:
    cdef unique_ptr[cMyServicePrioParentClientWrapper] _client
    cdef object loop

    def __cinit__(self, loop):
        self.loop = loop

    @staticmethod
    async def make_client(bytes host, int port, loop=None):
        if loop is None:
           loop = asyncio.get_event_loop()
        future = loop.create_future()
        future.loop = loop
        eb = await get_event_base(loop)
        make_py3_client[cMyServicePrioParentAsyncClient, cMyServicePrioParentClientWrapper](
            (<EventBase> eb)._folly_event_base,
            host,
            port,
            0,
            made_MyServicePrioParent_py3_client_callback,
            future)
        return await future

    def ping(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).ping(
            MyServicePrioParent_ping_callback,
            future)
        return future

    def pong(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).pong(
            MyServicePrioParent_pong_callback,
            future)
        return future

cdef class MyServicePrioChildClient:
    cdef unique_ptr[cMyServicePrioChildClientWrapper] _client
    cdef object loop

    def __cinit__(self, loop):
        self.loop = loop

    @staticmethod
    async def make_client(bytes host, int port, loop=None):
        if loop is None:
           loop = asyncio.get_event_loop()
        future = loop.create_future()
        future.loop = loop
        eb = await get_event_base(loop)
        make_py3_client[cMyServicePrioChildAsyncClient, cMyServicePrioChildClientWrapper](
            (<EventBase> eb)._folly_event_base,
            host,
            port,
            0,
            made_MyServicePrioChild_py3_client_callback,
            future)
        return await future

    def pang(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).pang(
            MyServicePrioChild_pang_callback,
            future)
        return future

