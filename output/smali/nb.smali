.class public final Lnb;
.super Llb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llb<",
        "Lnb;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Lob;

.field public s:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmb<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Llb;-><init>(Ljava/lang/Object;Lmb;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lnb;->r:Lob;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Lnb;->s:F

    return-void
.end method
