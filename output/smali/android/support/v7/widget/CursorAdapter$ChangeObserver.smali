.class public Landroid/support/v7/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/support/v7/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/CursorAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v7/widget/CursorAdapter;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v7/widget/CursorAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/CursorAdapter;->onContentChanged()V

    return-void
.end method
