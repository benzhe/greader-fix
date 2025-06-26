.class public final synthetic Lpg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxw0;


# direct methods
.method public constructor <init>(Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg1;->e:Lxw0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lpg1;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->destroy()V

    return-void
.end method
