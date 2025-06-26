.class public Ltg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls96;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls96<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Lr96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr96<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Ls96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls96<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr96;Ls96;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr96<",
            "TT;>;",
            "Ls96<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltg5;->a:Lr96;

    .line 3
    iput-object p2, p0, Ltg5;->b:Ls96;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltg5;->b:Ls96;

    invoke-interface {v0}, Ls96;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
