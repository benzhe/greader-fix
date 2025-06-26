.class public Lwh$a;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwh;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqh;


# direct methods
.method public constructor <init>(Lwh;Lqh;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lwh$a;->a:Lqh;

    invoke-direct {p0}, Lth;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lqh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwh$a;->a:Lqh;

    invoke-virtual {v0}, Lqh;->A()V

    .line 2
    invoke-virtual {p1, p0}, Lqh;->x(Lqh$d;)Lqh;

    return-void
.end method
