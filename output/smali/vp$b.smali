.class public final Lvp$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljava/lang/String;

.field public final d:[Lvp$a;


# direct methods
.method public constructor <init>(II[Ljava/lang/String;[Lvp$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lvp$b;->a:I

    .line 3
    iput p2, p0, Lvp$b;->b:I

    .line 4
    iput-object p3, p0, Lvp$b;->c:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lvp$b;->d:[Lvp$a;

    return-void
.end method

.method public constructor <init>(Lvp;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lvp;->h:I

    .line 8
    iput v0, p0, Lvp$b;->a:I

    .line 9
    iget v0, p1, Lvp;->k:I

    .line 10
    iput v0, p0, Lvp$b;->b:I

    .line 11
    iget-object v0, p1, Lvp;->f:[Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lvp$b;->c:[Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lvp;->g:[Lvp$a;

    .line 14
    iput-object p1, p0, Lvp$b;->d:[Lvp$a;

    return-void
.end method
