.class public final Lfn2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lf61;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lsm2;

.field public final b:Lkn2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkn2<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsm2;Lkn2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsm2;",
            "Lkn2<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfn2;->a:Lsm2;

    .line 3
    iput-object p2, p0, Lfn2;->b:Lkn2;

    return-void
.end method
