.class public Lha$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lha;->t(Landroid/view/View;Lea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lea;


# direct methods
.method public constructor <init>(Lea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha$a;->a:Lea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    new-instance v0, Lqa;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p2}, Lqa;-><init>(Landroid/view/WindowInsets;)V

    .line 4
    iget-object p2, p0, Lha$a;->a:Lea;

    invoke-interface {p2, p1, v0}, Lea;->a(Landroid/view/View;Lqa;)Lqa;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lqa;->j()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
