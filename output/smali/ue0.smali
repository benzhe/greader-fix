.class public final Lue0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbt0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbt0<",
        "Lpd0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lse0;


# direct methods
.method public constructor <init>(Lse0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lue0;->a:Lse0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lpd0;

    .line 2
    sget-object v0, Lms0;->e:Lzv2;

    new-instance v1, Lxe0;

    invoke-direct {v1, p0, p1}, Lxe0;-><init>(Lue0;Lpd0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
