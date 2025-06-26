.class public Lmu6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noinnion/android/widget/TouchListView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmu6;


# direct methods
.method public constructor <init>(Lmu6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmu6$d;->a:Lmu6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmu6$d;->a:Lmu6;

    .line 2
    iget-object v0, v0, Lmu6;->p:Lmu6$f;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    return-void
.end method
