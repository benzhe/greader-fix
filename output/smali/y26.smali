.class public final synthetic Ly26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lf45;


# direct methods
.method public constructor <init>(Lf45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly26;->e:Lf45;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly26;->e:Lf45;

    .line 1
    iget-object v0, v0, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->s(Ljava/lang/Object;)V

    return-void
.end method
