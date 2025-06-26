.class public final Lbp7;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lrk7$a;",
        "Lcp7;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lbp7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbp7;

    invoke-direct {v0}, Lbp7;-><init>()V

    sput-object v0, Lbp7;->e:Lbp7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lrk7$a;

    .line 2
    instance-of v0, p1, Lcp7;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcp7;

    return-object p1
.end method
