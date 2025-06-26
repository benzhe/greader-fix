.class public final synthetic Lck2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lni2;


# instance fields
.field public final a:Lzj2;


# direct methods
.method public constructor <init>(Lzj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck2;->a:Lzj2;

    return-void
.end method


# virtual methods
.method public final a(Loi2;)Lk91;
    .locals 1

    iget-object v0, p0, Lck2;->a:Lzj2;

    .line 1
    invoke-virtual {v0, p1}, Lzj2;->b(Loi2;)Lp01;

    move-result-object p1

    return-object p1
.end method
