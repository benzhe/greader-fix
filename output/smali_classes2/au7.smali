.class public final synthetic Lau7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic e:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau7;->e:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lau7;->e:Ljava/lang/Iterable;

    .line 1
    sget-char v1, Lorg/apache/commons/lang3/ClassUtils;->PACKAGE_SEPARATOR_CHAR:C

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    new-instance v2, Lorg/apache/commons/lang3/ClassUtils$2;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/lang3/ClassUtils$2;-><init>(Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v2
.end method
