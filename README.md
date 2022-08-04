<!-- Title -->
# VILT: Video Instructions Linking for Complex Tasks</h2>


<!-- TABLE OF CONTENTS -->
  <h5>Table of Contents</h5>
  <ol>
    <li><a href="#overview">Overview</a>
    <li><a href="#paper">Paper</a>
    <li><a href="#dataset">Benchmark Dataset</a></li>
    <li><a href="#change-log">Change Log</a></li>
    <li><a href="#tasks">Task</a></li>
    <li><a href="#complex-topics">Topics</a></li>
    <li><a href="#doc-corpus">Video Corpus</a></li>
    <li><a href="#judgments">Judgments</a></li>
    <li><a href="#evaluation">Evaluation</a></li>
    <li><a href="#future-work">Future Work</a></li>
  </ol>

Colab demo showing indexing and evaluation: [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1vU7l6dkLRYItE289aLanO30zhXJUBfL-?usp=sharing)


<!-- Overview -->
<h3 id="overview">Overview</h3>

<p> 
VILT is a new benchmark collection of tasks and multimodal video content.
For VILT, we target cooking information needs to assist the user in interactively accomplishing complex real-world tasks.
Cooking is an example domain where complex real-world tasks require detailed instructions and guidance to support most users.
For example, the instruction ‘Add the melted butter and stir until well combined’, would benefit from a more detailed instructional step on `How to melt butter'. 

The video linking collection includes annotations from 10 (recipe) tasks, which the annotators chose from a random subset of the collection of 2,275 high-quality 'Wholefoods' recipes.
There are linking annotations for 61 query steps across these tasks which contain cooking techniques, chosen from the 189 total recipe steps.
As each method results in approximately 10 videos to annotate, the collection consists of 831 linking judgments.

</p>

<!-- Paper -->
<h3 id="paper">Paper</h3>

This work will be presented at IMuR 2022: <!-- ARVIX LINK-->

Correct citation: 
```
@inproceedings{fischer2022vilt,
 title={VILT: Video Instructions Linking for Complex Tasks},
 author={Fischer, Sophie and Gemmell, Carlos and Mackie, Iain and Dalton, Jeffery},
 booktitle={Proceedings of the 2nd International Workshop on Interactive Multimedia Retrieval (IMuR '22)},
 year={2022}
}
```

<!-- Dataset -->
<h3 id="dataset">Benchmark Dataset</h3>
<p> VILT provides 61 topics for video retrieval: </p> 
  <ul>
    <li><a href="https://github.com/grill-lab/VILT/blob/master/topics/topics.json">Topics</a> 
    <li><a href="https://github.com/grill-lab/VILT/blob/master/qrels/document.qrels">Qrels</a></li>
    <li><a href="https://github.com/grill-lab/VILT/tree/master/runs">Baseline runs</a></li>
  </ul> 

Colab demo showing indexing and evaluation: [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1vU7l6dkLRYItE289aLanO30zhXJUBfL-?usp=sharing)

<!-- Change Log -->
<h3 id="change-log">Change Log</h3>

Major dataset changes historic users should be aware:
<ul>
    <li> <b>4th August 2022</b>: VILT v1 released.  
</ul> 


<!-- Tasks -->
<h3 id="tasks">Task</h3>

The VILT is defined as follows:

We aim to linking instructional videos to steps in a task <i>T</i> with multiple steps <i>[S_1, ..., S_N]</i>.
Given a step <i>S</i>, we formulate a query <i>Q</i>.
For each step query <i>Q</i>, we return a relevance-ranked list of video results <i>[D_1, ..., D_N]</i>.

We illustrate the task with the example for tabbouleh salad.
This recipe contains the following steps: 'Dice the tomatoes' (<i>S_1</i>), 'Chop parsley and mint leaves' (<i>S_2</i>), 'Cook the bulgur' (<i>S_3</i>) and 'Chop scallions to sprinkle over the salad' (<i>S_4</i>).

For each steps <i>S_1</i>-<i>S_4</i>, there is an underlying cooking technique that the user needs to be able to perform to complete the step successfully.
For each of <i>S_1</i> - <i>S_4</i>, we formulate a query <i>Q</i> for which the system needs to retrieve a relevant video <i>D</i>.

<!-- Topics -->
<h3 id="complex-topics">Topics</h3>
VILT provides 61 topics that have been annotated, taken from high-quality seed websites on 'Wholefoods.com'. 
The annotators selected the topic to have an information need, i.e. benefit from an additional instructional video to complete the step.

Each topic contains the recipe title as well as query type. We differentiate between execution steps, i.e. steps required to cook the recipe (<i>s</i>) and requirement steps, which are required to prepare the ingredients for the recipe (<i>r</i>) as mise-en-place.

<!-- Video Corpus -->
<h3 id="doc-corpus">Video Corpus</h3>

We use Common Crawl and [OAT](https://github.com/grill-lab/OAT) to curate a 2,133 video metadata corpus with focused instructional content for detailed Cooking skill instructions. 
The corpus downloaded here: [link](https://vilt-public-data.s3.amazonaws.com/video_metadata.jsonl)

The corpus is released in jsonline format with following fields for each video:

<ul>
   <li> <b>title</b>: <i> 'How to' video title</i></li>
   <li> <b>id</b>: <i>Unique identifier is the MD5 hash of URL.</i>
   <li> <b>url</b>: <i>Location of the YouTube video (URL). </i>
   <li> <b>uploader</b>: <i>YouTube uploaded</i></li>
   <li> <b>views</b>: <i>views on YouTube</i></li>
   <li> <b>duration</b>: <i>length of video</i></li>
   <li> <b>description</b>: <i>Video description provided by uploader</i>
   <li> <b>description</b>: <i>Video description provided by uploader</i>
   <li> <b>subtitles</b>: <i>Automatically generated subtitles of the video</i>
 </ul> 

<!-- Judgments -->
<h3 id="judgments">Judgments</h3>

For VILT, we created 831 video document judgments (13.6 per topic):

<table class="tg">
<thead>
  <tr>
    <th class="tg-j6zm"><span style="font-weight:bold">Judgment</span></th>
    <th class="tg-j6zm"><span style="font-weight:bold">Document Ranking</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-kex3"><span style="font-weight:bold">0</span></td>
    <td class="tg-2b7s"><span style="font-weight:normal">580</span></td>
  </tr>
  <tr>
    <td class="tg-kex3"><span style="font-weight:bold">1</span></td>
    <td class="tg-2b7s"><span style="font-weight:normal">191</span></td>
  </tr>
  <tr>
    <td class="tg-kex3"><span style="font-weight:bold">2</span></td>
    <td class="tg-2b7s"><span style="font-weight:normal">60</span></td>
  </tr>

  <tr>
    <td class="tg-j6zm"><span style="font-weight:bold">TOTAL</span></td>
    <td class="tg-2b7s"><span style="font-weight:normal">831</span></td>
  </tr>
</tbody>
</table>

   
<!-- Evaluation -->
<h3 id="evaluation">Evaluation</h3>

We provide TREC-style query-relevance files: <a href="https://github.com/grill-lab/VILT/blob/master/qrels/document.qrels">link</a>. 

The official measures for the task include MRR, NDCG@10, MAP and P@1.


<!-- Future Work -->
<h3 id="future-work">Future Work </h3>

We envision VILT to be an evolving collection, with additional judgments and tasks added in the future.
Please suggest any future extensions or bug fixes on github or email (sophie.fischer@glasgow.ac.uk). 


