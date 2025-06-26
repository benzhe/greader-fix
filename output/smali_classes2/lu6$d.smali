.class public Llu6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noinnion/android/widget/TouchListView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llu6;


# direct methods
.method public constructor <init>(Llu6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llu6$d;->a:Llu6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Llu6$d;->a:Llu6;

    .line 2
    iget-object v0, v0, Llu6;->p:Llu6$f;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    return-void
.end method
