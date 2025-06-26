.class public final synthetic Lq36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Ly36;


# direct methods
.method public constructor <init>(Ly36;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq36;->e:Ly36;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lq36;->e:Ly36;

    check-cast p1, Lng6;

    .line 1
    sget-object v1, Ly36;->c:Lng6;

    invoke-virtual {v0, p1}, Ly36;->b(Lng6;)V

    return-void
.end method
