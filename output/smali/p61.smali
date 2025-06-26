.class public final synthetic Lp61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lrv2;


# direct methods
.method public constructor <init>(Lrv2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp61;->e:Lrv2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp61;->e:Lrv2;

    .line 2
    new-instance v1, Lbu1;

    sget-object v2, Ldm2;->g:Ldm2;

    invoke-direct {v1, v2}, Lbu1;-><init>(Ldm2;)V

    invoke-interface {v0, v1}, Lrv2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
