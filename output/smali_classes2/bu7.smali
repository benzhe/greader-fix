.class public final synthetic Lbu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic e:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu7;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lbu7;->e:Ljava/lang/Class;

    .line 1
    sget-char v1, Lorg/apache/commons/lang3/ClassUtils;->PACKAGE_SEPARATOR_CHAR:C

    .line 2
    new-instance v1, Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/mutable/MutableObject;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lorg/apache/commons/lang3/ClassUtils$1;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/ClassUtils$1;-><init>(Lorg/apache/commons/lang3/mutable/MutableObject;)V

    return-object v0
.end method
