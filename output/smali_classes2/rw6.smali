.class public Lrw6;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final e:Lhc7;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lhc7;

    invoke-direct {v0}, Lhc7;-><init>()V

    iput-object v0, p0, Lrw6;->e:Lhc7;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrw6;->e:Lhc7;

    invoke-virtual {v0}, Lhc7;->d()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
