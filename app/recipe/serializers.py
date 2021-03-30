from core.models import Tag
from rest_framework import serializers


class TagSerializer(serializers.ModelSerializer):
    """Serializer fot tag objects"""

    class Meta:
        model = Tag
        fields = ('id', 'name')
        read_only_fields = ('id',)
