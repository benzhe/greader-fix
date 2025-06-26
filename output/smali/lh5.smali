.class public Llh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhh5;


# instance fields
.field public final a:Lbf5;


# direct methods
.method public constructor <init>(Lbf5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llh5;->a:Lbf5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llh5;->a:Lbf5;

    const-string v1, "clx"

    invoke-interface {v0, v1, p1, p2}, Lbf5;->W(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
