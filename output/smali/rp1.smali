.class public final synthetic Lrp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler3;


# instance fields
.field public final e:Lop1;


# direct methods
.method public constructor <init>(Lop1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrp1;->e:Lop1;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    iget-object v0, p0, Lrp1;->e:Lop1;

    .line 1
    iget-object v0, v0, Lop1;->a:Lx91;

    .line 2
    sget-object v1, Laa1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
