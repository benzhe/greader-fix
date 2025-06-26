.class public final Lct0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lbt0;

.field public final synthetic b:Lzs0;


# direct methods
.method public constructor <init>(Lbt0;Lzs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lct0;->a:Lbt0;

    iput-object p2, p0, Lct0;->b:Lzs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lct0;->b:Lzs0;

    invoke-interface {p1}, Lzs0;->run()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lct0;->a:Lbt0;

    invoke-interface {v0, p1}, Lbt0;->zzg(Ljava/lang/Object;)V

    return-void
.end method
