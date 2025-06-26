.class public final synthetic Lev0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk3;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lev0;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Lek3;
    .locals 2

    .line 1
    iget-object v0, p0, Lev0;->a:[B

    .line 2
    new-instance v1, Lfk3;

    invoke-direct {v1, v0}, Lfk3;-><init>([B)V

    return-object v1
.end method
