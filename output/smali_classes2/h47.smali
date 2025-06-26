.class public abstract Lh47;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh47$b;,
        Lh47$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final b:Lh47;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lh47;

    new-instance v1, Lh47$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lh47$b;-><init>(Lh47$a;)V

    sput-object v1, Lh47;->a:Ljava/lang/Iterable;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lh47$a;

    invoke-direct {v4}, Lh47$a;-><init>()V

    .line 3
    invoke-static {v0, v1, v3, v4}, Ln56;->s1(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lw47;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    :goto_0
    check-cast v2, Lh47;

    sput-object v2, Lh47;->b:Lh47;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lg47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lg47<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method
