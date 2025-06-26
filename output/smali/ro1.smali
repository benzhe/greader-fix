.class public final Lro1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lxw0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lsk2;

.field public final synthetic b:Lwk2;


# direct methods
.method public constructor <init>(Lsk2;Lwk2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lro1;->a:Lsk2;

    iput-object p2, p0, Lro1;->b:Lwk2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lxw0;

    .line 2
    iget-object v0, p0, Lro1;->a:Lsk2;

    iget-object v1, p0, Lro1;->b:Lwk2;

    invoke-interface {p1, v0, v1}, Lxw0;->E(Lsk2;Lwk2;)V

    return-void
.end method
