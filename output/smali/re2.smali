.class public final synthetic Lre2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldv2;


# instance fields
.field public final a:Lse2;


# direct methods
.method public constructor <init>(Lse2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lre2;->a:Lse2;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 3

    iget-object v0, p0, Lre2;->a:Lse2;

    .line 1
    iget-object v1, v0, Lse2;->a:Lkr0;

    iget-object v2, v0, Lse2;->c:Landroid/content/Context;

    iget v0, v0, Lse2;->b:I

    invoke-interface {v1, v2, v0}, Lkr0;->b(Landroid/content/Context;I)Law2;

    move-result-object v0

    return-object v0
.end method
