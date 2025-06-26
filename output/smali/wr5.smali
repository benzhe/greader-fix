.class public final synthetic Lwr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lfs5;


# direct methods
.method public constructor <init>(Lfs5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwr5;->e:Lfs5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lwr5;->e:Lfs5;

    .line 1
    iget-object v0, v0, Lfs5;->b:Lss5;

    invoke-interface {v0}, Lss5;->start()V

    return-void
.end method
