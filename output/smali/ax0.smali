.class public final Lax0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic e:Lnp0;

.field public final synthetic f:Lww0;


# direct methods
.method public constructor <init>(Lww0;Lnp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lax0;->f:Lww0;

    iput-object p2, p0, Lax0;->e:Lnp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lax0;->f:Lww0;

    iget-object v1, p0, Lax0;->e:Lnp0;

    const/16 v2, 0xa

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lww0;->s(Landroid/view/View;Lnp0;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
