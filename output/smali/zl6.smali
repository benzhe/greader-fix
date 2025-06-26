.class public final synthetic Lzl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lhm6;


# direct methods
.method public synthetic constructor <init>(Lhm6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzl6;->e:Lhm6;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lzl6;->e:Lhm6;

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Lhm6;->d:I

    .line 2
    invoke-virtual {p1}, Lhm6;->h()V

    return-void
.end method
