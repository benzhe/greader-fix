.class public final synthetic Lod1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Lrp3;


# direct methods
.method public constructor <init>(Lrp3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod1;->a:Lrp3;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lod1;->a:Lrp3;

    check-cast p1, Lud1;

    .line 2
    invoke-interface {p1, v0}, Lud1;->l0(Lrp3;)V

    return-void
.end method
