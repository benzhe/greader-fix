.class public La75$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La75;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:La75;


# direct methods
.method public constructor <init>(La75;I)V
    .locals 0

    .line 1
    iput-object p1, p0, La75$a;->f:La75;

    iput p2, p0, La75$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La75$a;->f:La75;

    .line 2
    iget-object v0, v0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget v1, p0, La75$a;->e:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->m0(I)V

    return-void
.end method
