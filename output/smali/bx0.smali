.class public final Lbx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lnp0;

.field public final synthetic g:I

.field public final synthetic h:Lww0;


# direct methods
.method public constructor <init>(Lww0;Landroid/view/View;Lnp0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbx0;->h:Lww0;

    iput-object p2, p0, Lbx0;->e:Landroid/view/View;

    iput-object p3, p0, Lbx0;->f:Lnp0;

    iput p4, p0, Lbx0;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbx0;->h:Lww0;

    iget-object v1, p0, Lbx0;->e:Landroid/view/View;

    iget-object v2, p0, Lbx0;->f:Lnp0;

    iget v3, p0, Lbx0;->g:I

    add-int/lit8 v3, v3, -0x1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lww0;->s(Landroid/view/View;Lnp0;I)V

    return-void
.end method
