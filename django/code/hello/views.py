import logging

from django.http import HttpResponse


LOG = logging.getLogger(__name__)


def index(request):
    LOG.info("index(): Entering")
    return HttpResponse("Hello")
