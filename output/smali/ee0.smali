.class public final synthetic Lee0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lpd0;


# direct methods
.method public constructor <init>(Lpd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lee0;->e:Lpd0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lee0;->e:Lpd0;

    invoke-interface {v0}, Lpd0;->destroy()V

    return-void
.end method
