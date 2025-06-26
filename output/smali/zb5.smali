.class public Lzb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lwb5;


# direct methods
.method public constructor <init>(Lwb5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzb5;->a:Lwb5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzb5;->a:Lwb5;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lwb5;->i:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iput-wide v1, v0, Lwb5;->k:J

    .line 5
    iget-object v0, p0, Lzb5;->a:Lwb5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lwb5;->g(Lwb5;Z)V

    return-void
.end method
