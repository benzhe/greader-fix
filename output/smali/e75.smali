.class public Le75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:La75;


# direct methods
.method public constructor <init>(La75;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le75;->e:La75;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le75;->e:La75;

    .line 2
    sget-object v0, La75$e;->e:La75$e;

    iget-object v1, p1, La75;->j:La75$e;

    sget-object v2, La75$e;->f:La75$e;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v0}, La75;->i(La75$e;)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 4
    invoke-virtual {p1, v2}, La75;->i(La75$e;)V

    :cond_1
    :goto_0
    return-void
.end method
