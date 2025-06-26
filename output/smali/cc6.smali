.class public final synthetic Lcc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# instance fields
.field public final a:Ldc6$a;


# direct methods
.method public constructor <init>(Ldc6$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc6;->a:Ldc6$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 1

    iget-object v0, p0, Lcc6;->a:Ldc6$a;

    check-cast p1, Lyb6;

    .line 1
    sget-object p1, Ldc6;->j:[I

    .line 2
    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    return-object p1
.end method
