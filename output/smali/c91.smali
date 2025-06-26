.class public final Lc91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La91;


# direct methods
.method public constructor <init>(La91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc91;->a:La91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Lc91;->a:La91;

    .line 3
    iget-object p1, p1, La91;->e:Lqa1;

    .line 4
    invoke-virtual {p1}, Lqa1;->onAdImpression()V

    return-void
.end method
