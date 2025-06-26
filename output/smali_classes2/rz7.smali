.class public final synthetic Lrz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/reflect/Typed;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrz7;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .locals 2

    iget-object v0, p0, Lrz7;->a:Ljava/lang/reflect/Type;

    .line 1
    sget-object v1, Lorg/apache/commons/lang3/reflect/TypeUtils;->WILDCARD_ALL:Ljava/lang/reflect/WildcardType;

    return-object v0
.end method
