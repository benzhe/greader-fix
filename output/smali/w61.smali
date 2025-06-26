.class public final Lw61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lf61;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lrv2;

.field public final synthetic b:Lq61;


# direct methods
.method public constructor <init>(Lq61;Lrv2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw61;->b:Lq61;

    iput-object p2, p0, Lw61;->a:Lrv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw61;->b:Lq61;

    invoke-static {v0}, Lq61;->a(Lq61;)V

    .line 2
    iget-object v0, p0, Lw61;->a:Lrv2;

    invoke-interface {v0, p1}, Lrv2;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lf61;

    .line 2
    iget-object v0, p0, Lw61;->b:Lq61;

    invoke-static {v0}, Lq61;->a(Lq61;)V

    .line 3
    iget-object v0, p0, Lw61;->a:Lrv2;

    invoke-interface {v0, p1}, Lrv2;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
