.class public final Lla2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnd2<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Lb20;


# direct methods
.method public constructor <init>(Law2;JLb20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "TS;>;J",
            "Lb20;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lla2;->a:Law2;

    .line 3
    iput-object p4, p0, Lla2;->c:Lb20;

    .line 4
    invoke-interface {p4}, Lb20;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lla2;->b:J

    return-void
.end method
