.class public final synthetic Lbp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Llo2;


# direct methods
.method public constructor <init>(Llo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp2;->a:Llo2;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbp2;->a:Llo2;

    check-cast p1, Lfp2;

    .line 2
    iget-object v1, v0, Llo2;->e:Ljava/lang/Object;

    .line 3
    check-cast v1, Lap2;

    .line 4
    iget-object v0, v0, Llo2;->f:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v1, v0}, Lfp2;->z(Lap2;Ljava/lang/String;)V

    return-void
.end method
