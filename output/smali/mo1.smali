.class public final Lmo1;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkb0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmo1;->a:Ljava/lang/String;

    iput-object p2, p0, Lmo1;->b:Lkb0;

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
    iget-object v0, p0, Lmo1;->a:Ljava/lang/String;

    iget-object v1, p0, Lmo1;->b:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    return-void
.end method
