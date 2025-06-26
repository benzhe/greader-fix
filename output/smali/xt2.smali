.class public final Lxt2;
.super Liu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liu2<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lut2;


# direct methods
.method public constructor <init>(Lut2;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxt2;->f:Lut2;

    invoke-direct {p0, p2}, Liu2;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxt2;->f:Lut2;

    iget-object v0, v0, Lut2;->f:Lvs2;

    invoke-interface {v0, p1}, Lvs2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
