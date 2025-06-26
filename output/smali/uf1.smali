.class public final synthetic Luf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Lfm3;


# direct methods
.method public constructor <init>(Lfm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luf1;->a:Lfm3;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luf1;->a:Lfm3;

    check-cast p1, Lem3;

    .line 2
    invoke-interface {p1, v0}, Lem3;->c0(Lfm3;)V

    return-void
.end method
