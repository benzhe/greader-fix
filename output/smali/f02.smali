.class public final synthetic Lf02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg61;


# instance fields
.field public final a:Lxw0;


# direct methods
.method public constructor <init>(Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf02;->a:Lxw0;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lsu3;
    .locals 1

    iget-object v0, p0, Lf02;->a:Lxw0;

    invoke-interface {v0}, Lxw0;->f()Lrx0;

    move-result-object v0

    return-object v0
.end method
