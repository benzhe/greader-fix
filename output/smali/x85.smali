.class public final Lx85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea;


# instance fields
.field public final synthetic a:Lz85;

.field public final synthetic b:La95;


# direct methods
.method public constructor <init>(Lz85;La95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx85;->a:Lz85;

    iput-object p2, p0, Lx85;->b:La95;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lqa;)Lqa;
    .locals 3

    .line 1
    iget-object v0, p0, Lx85;->a:Lz85;

    new-instance v1, La95;

    iget-object v2, p0, Lx85;->b:La95;

    invoke-direct {v1, v2}, La95;-><init>(La95;)V

    invoke-interface {v0, p1, p2, v1}, Lz85;->a(Landroid/view/View;Lqa;La95;)Lqa;

    move-result-object p1

    return-object p1
.end method
