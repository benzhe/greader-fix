.class public Ljv6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noinnion/android/widget/TouchListView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljv6;


# direct methods
.method public constructor <init>(Ljv6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljv6$c;->a:Ljv6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljv6$c;->a:Ljv6;

    .line 2
    iget-object v0, v0, Ljv6;->f:Ljv6$d;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Ljv6$c;->a:Ljv6;

    .line 5
    iget-object v0, v0, Ljv6;->e:Ljv6$e;

    .line 6
    invoke-interface {v0, p1}, Ljv6$e;->remove(I)V

    return-void
.end method
