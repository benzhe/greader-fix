.class public Lp9$d;
.super Lp9$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lp9$b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp9$c;-><init>(Lp9$b;)V

    .line 2
    iput-boolean p2, p0, Lp9$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp9$d;->b:Z

    return v0
.end method
