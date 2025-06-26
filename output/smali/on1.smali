.class public final synthetic Lon1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem3;


# instance fields
.field public final e:Lxw0;


# direct methods
.method public constructor <init>(Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lon1;->e:Lxw0;

    return-void
.end method


# virtual methods
.method public final c0(Lfm3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lon1;->e:Lxw0;

    .line 2
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    iget-object p1, p1, Lfm3;->d:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 3
    check-cast v0, Lww0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lww0;->r(IIZ)V

    return-void
.end method
