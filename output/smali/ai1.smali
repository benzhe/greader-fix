.class public final Lai1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf1;


# instance fields
.field public final a:Lxa1;


# direct methods
.method public constructor <init>(Lxa1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lai1;->a:Lxa1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lai1;->a:Lxa1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxa1;->I0(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
